.class Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;
.super Lorg/springframework/web/util/UriTemplate;
.source "RestTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/client/RestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpUrlTemplate"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "uriTemplate"

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriTemplate;-><init>(Ljava/lang/String;)V

    .line 731
    return-void
.end method


# virtual methods
.method protected encodeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 5
    .parameter "uri"

    .prologue
    .line 737
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lorg/springframework/web/util/UriUtils;->encodeHttpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, encoded:Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 740
    .end local v0           #encoded:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 742
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 744
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 745
    .local v1, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create HTTP URL from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
