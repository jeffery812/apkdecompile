.class public final Lcom/google/ads/interactivemedia/v3/b/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/b/v$a;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/s;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/b/v;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/s;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/v;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->d:Z

    .line 26
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 27
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/d;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 29
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/r$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/b/r$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/d;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 81
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 82
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->start:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->d:Z

    .line 85
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 87
    :cond_1
    return-void
.end method

.method public final onEnded()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->end:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 56
    return-void
.end method

.method public final onError()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 61
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->error:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 62
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 43
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->pause:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 44
    return-void
.end method

.method public final onPlay()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->b()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->d:Z

    .line 38
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->e:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->b()V

    .line 49
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->play:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 50
    return-void
.end method

.method public final onVolumeChanged(I)V
    .locals 2
    .parameter "percentage"

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Z

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->mute:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Z

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Z

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->unmute:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/d;->c:Z

    .line 75
    :cond_1
    return-void
.end method
