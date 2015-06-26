.class public final Lcom/google/ads/interactivemedia/v3/b/t;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/t$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/t$a;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/t$a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/b/t$a;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/b/t$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/t;->a:Lcom/google/ads/interactivemedia/v3/b/t$a;

    .line 34
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/t;->b:Landroid/webkit/WebView;

    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/t;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/t$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/t$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/t;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/t;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/r;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending javascript msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/t;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/t;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/r;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/t;->a:Lcom/google/ads/interactivemedia/v3/b/t$a;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t$a;->a(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 98
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    const-string v1, "IMASDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An internal error occured parsing message from javascript.  Message to be parsed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
