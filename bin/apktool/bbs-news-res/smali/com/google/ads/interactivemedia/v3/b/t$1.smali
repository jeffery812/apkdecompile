.class final Lcom/google/ads/interactivemedia/v3/b/t$1;
.super Landroid/webkit/WebViewClient;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/b/t$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/t;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/t;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/t$1;->a:Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 42
    const-string v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/t$1;->a:Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/t;->b(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method
