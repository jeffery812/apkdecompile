.class public final Lcom/google/ads/interactivemedia/v3/b/h;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/h$1;,
        Lcom/google/ads/interactivemedia/v3/b/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/b/s;

.field private c:Lcom/google/ads/interactivemedia/v3/b/u;

.field private d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private e:Lcom/google/ads/interactivemedia/v3/b/b/e;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/ads/interactivemedia/v3/b/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/u;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 43
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/h;->c:Lcom/google/ads/interactivemedia/v3/b/u;

    .line 44
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/b/h;->f:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->a:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/s;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "IMASDK"

    const-string v1, "Cannot stop non current ad UI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/h$1;->b:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->c:Lcom/google/ads/interactivemedia/v3/b/u;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/u;->b()Lcom/google/ads/interactivemedia/v3/b/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/r$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/s;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/a;)V
    .locals 5
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/a;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->g:Lcom/google/ads/interactivemedia/v3/b/a/a;

    .line 63
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/h$1;->b:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->c:Lcom/google/ads/interactivemedia/v3/b/u;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/u;->b()Lcom/google/ads/interactivemedia/v3/b/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/r$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 63
    :pswitch_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/d;-><init>()V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Z

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/h;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/b/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/b/d;Lcom/google/ads/interactivemedia/v3/b/s;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/b/s$c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/b/h$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/h;B)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Lcom/google/ads/interactivemedia/v3/b/b/e$a;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->e:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/h;->d:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/h;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/s;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
