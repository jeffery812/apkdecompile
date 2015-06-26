.class public final Lcom/google/ads/interactivemedia/v3/b/r;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/r$a;,
        Lcom/google/ads/interactivemedia/v3/b/r$c;,
        Lcom/google/ads/interactivemedia/v3/b/r$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/a/f;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/b/r$b;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/ads/interactivemedia/v3/b/r$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/g;-><init>()V

    const-class v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/r$1;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/b/r$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a()Lcom/google/ads/interactivemedia/v3/a/f;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/r;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/r;->b:Lcom/google/ads/interactivemedia/v3/b/r$b;

    .line 149
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/r;->e:Lcom/google/ads/interactivemedia/v3/b/r$c;

    .line 150
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/r;->d:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/r;->c:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/r;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/ads/interactivemedia/v3/a/t;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    if-nez v2, :cond_0

    .line 129
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Session id must be provided in message."

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/r;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/r$b;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/r$b;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/b/r$c;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/r$c;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/r;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/google/ads/interactivemedia/v3/b/a/e;

    invoke-virtual {v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/b/r$b;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/r;->b:Lcom/google/ads/interactivemedia/v3/b/r$b;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/b/r$c;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/r;->e:Lcom/google/ads/interactivemedia/v3/b/r$c;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/r;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x3

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 182
    const-string v1, "type"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/r;->e:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "sid"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "data"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/r;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "%s(\'%s\', %s);"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:adsense.mobileads.afmanotify.receiveMessage"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/r;->b:Lcom/google/ads/interactivemedia/v3/b/r$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    const-string v0, "JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/r;->b:Lcom/google/ads/interactivemedia/v3/b/r$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/r;->e:Lcom/google/ads/interactivemedia/v3/b/r$c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/r;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/r;->c:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
