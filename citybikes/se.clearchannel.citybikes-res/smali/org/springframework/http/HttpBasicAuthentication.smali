.class public Lorg/springframework/http/HttpBasicAuthentication;
.super Lorg/springframework/http/HttpAuthentication;
.source "HttpBasicAuthentication.java"


# instance fields
.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/springframework/http/HttpAuthentication;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/springframework/http/HttpBasicAuthentication;->username:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/springframework/http/HttpBasicAuthentication;->password:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    const-string v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/springframework/http/HttpBasicAuthentication;->username:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/springframework/http/HttpBasicAuthentication;->password:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, bytes:[B
    const-string v1, "Basic %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/springframework/util/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, s:Ljava/lang/String;
    :try_start_0
    const-string v2, "Authorization: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/springframework/http/HttpBasicAuthentication;->getHeaderValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 55
    :goto_0
    return-object v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, re:Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    goto :goto_0
.end method
