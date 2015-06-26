.class public final Lcom/google/ads/interactivemedia/v3/b/l;
.super Landroid/webkit/WebView;
.source "IMASDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/a/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/l;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 27
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/l$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/l$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/l;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/s;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/l;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 46
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/b/a/c;->type:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/a/c$a;->Html:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    const-string v1, "text/html"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/l;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/b/a/c;->type:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/a/c$a;->IFrame:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/l;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Companion type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/b/a/c;->type:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid for a CompanionWebView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
