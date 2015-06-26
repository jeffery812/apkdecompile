.class public final Lcom/google/android/gms/internal/cw;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cw$a;
    }
.end annotation


# instance fields
.field private fU:Lcom/google/android/gms/internal/x;

.field private final fV:Lcom/google/android/gms/internal/cu;

.field private final fx:Ljava/lang/Object;

.field private final he:Lcom/google/android/gms/internal/h;

.field private final iN:Lcom/google/android/gms/internal/cx;

.field private final iO:Lcom/google/android/gms/internal/cw$a;

.field private iP:Lcom/google/android/gms/internal/bk;

.field private iQ:Z

.field private iR:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cw$a;Lcom/google/android/gms/internal/x;ZZLcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/cu;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->iO:Lcom/google/android/gms/internal/cw$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/cw;->he:Lcom/google/android/gms/internal/h;

    iput-object p6, p0, Lcom/google/android/gms/internal/cw;->fV:Lcom/google/android/gms/internal/cu;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/cw;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v1, p6, Lcom/google/android/gms/internal/cu;->iJ:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cq;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/cw;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/cz;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/internal/cw;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->iN:Lcom/google/android/gms/internal/cx;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iN:Lcom/google/android/gms/internal/cx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/da;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/da;-><init>(Lcom/google/android/gms/internal/cw;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aG()V

    return-void

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cp;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/cx;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/cw;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->iN:Lcom/google/android/gms/internal/cx;

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/internal/cw;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/x;ZZLcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/cu;)Lcom/google/android/gms/internal/cw;
    .locals 7

    new-instance v1, Lcom/google/android/gms/internal/cw$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cw$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/cw;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/internal/cw$a;Lcom/google/android/gms/internal/x;ZZLcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/cu;)V

    return-object v0
.end method

.method private aG()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/x;->eG:Z

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aH()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aI()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aH()V

    goto :goto_0

    :cond_3
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private aH()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iR:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->c(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iR:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private aI()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iR:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->d(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iR:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/x;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iO:Lcom/google/android/gms/internal/cw$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cw$a;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->iP:Lcom/google/android/gms/internal/bk;

    iput-object p2, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/co;->b(Landroid/webkit/WebView;)V

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iN:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->reset()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/bk;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->iP:Lcom/google/android/gms/internal/bk;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/x;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:AFMA_ReceiveMessage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/co;->m(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ct;->u(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not convert AFMA event parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aA()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->fV:Lcom/google/android/gms/internal/cu;

    iget-object v2, v2, Lcom/google/android/gms/internal/cu;->iJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public aB()Lcom/google/android/gms/internal/bk;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iP:Lcom/google/android/gms/internal/bk;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aC()Lcom/google/android/gms/internal/cx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iN:Lcom/google/android/gms/internal/cx;

    return-object v0
.end method

.method public aD()Lcom/google/android/gms/internal/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->he:Lcom/google/android/gms/internal/h;

    return-object v0
.end method

.method public aE()Lcom/google/android/gms/internal/cu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->fV:Lcom/google/android/gms/internal/cu;

    return-object v0
.end method

.method public aF()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public az()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->fV:Lcom/google/android/gms/internal/cu;

    iget-object v2, v2, Lcom/google/android/gms/internal/cu;->iJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/cw;->aG()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "size"

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const v0, 0x7fffffff

    const/high16 v8, 0x4000

    const/16 v7, 0x8

    const/high16 v6, -0x8000

    iget-object v4, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cw;->iQ:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_2

    if-ne v2, v8, :cond_9

    :cond_2
    move v2, v3

    :goto_1
    if-eq v5, v6, :cond_3

    if-ne v5, v8, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v5, v5, Lcom/google/android/gms/internal/x;->widthPixels:I

    if-gt v5, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v2, v2, Lcom/google/android/gms/internal/x;->heightPixels:I

    if-le v2, v0, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to show ad. Needs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v2, v2, Lcom/google/android/gms/internal/x;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v2, v2, Lcom/google/android/gms/internal/x;->heightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pixels, but only has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixels."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->setVisibility(I)V

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/cw;->setMeasuredDimension(II)V

    :goto_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cw;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v0, v0, Lcom/google/android/gms/internal/x;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    iget v1, v1, Lcom/google/android/gms/internal/x;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/cw;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_9
    move v2, v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->he:Lcom/google/android/gms/internal/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->he:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/h;->a(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->iO:Lcom/google/android/gms/internal/cw$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cw$a;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public y()Lcom/google/android/gms/internal/x;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->fU:Lcom/google/android/gms/internal/x;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
