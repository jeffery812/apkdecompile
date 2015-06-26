.class public final Lcom/google/ads/interactivemedia/v3/b/q;
.super Landroid/widget/ImageView;
.source "IMASDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/a/c;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/s;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/a/c;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/q;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 33
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/q;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 34
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/b/q;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p0}, Lcom/google/ads/interactivemedia/v3/b/q;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/b/q$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/q;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/q;)Lcom/google/ads/interactivemedia/v3/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/b/q;)V
    .locals 6
    .parameter

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "companionId"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/q;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/q;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$c;->companionView:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/q;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/q;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/q;->a:Lcom/google/ads/interactivemedia/v3/b/a/c;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Ljava/lang/String;)V

    .line 82
    return-void
.end method
