.class final Lcom/google/ads/interactivemedia/v3/b/q$1;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/b/q;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/q;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->a:Ljava/lang/Exception;

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/q;->a(Lcom/google/ads/interactivemedia/v3/b/q;)Lcom/google/ads/interactivemedia/v3/b/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->a:Ljava/lang/Exception;

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/q$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    if-nez p1, :cond_0

    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading image companion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/q;->a(Lcom/google/ads/interactivemedia/v3/b/q;)Lcom/google/ads/interactivemedia/v3/b/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->a:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->b(Lcom/google/ads/interactivemedia/v3/b/q;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q$1;->b:Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/q;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
