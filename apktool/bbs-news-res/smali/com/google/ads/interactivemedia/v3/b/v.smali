.class public final Lcom/google/ads/interactivemedia/v3/b/v;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/v$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field protected final b:J

.field protected c:Z

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/v$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;JB)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;JB)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->c:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->e:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->f:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/v;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 50
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/b/v;->b:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    .line 55
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->g:Ljava/util/List;

    .line 56
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->c:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/v;->c:Z

    .line 94
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->g:Ljava/util/List;

    .line 76
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;->d()V

    .line 77
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/v$a;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->g:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;->d()V

    .line 82
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/b/v$a;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->c:Z

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/b/v$a;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return v4

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/v$a;

    .line 106
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/v$a;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/v;->d:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/v;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
