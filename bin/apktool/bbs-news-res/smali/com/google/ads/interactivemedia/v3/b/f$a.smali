.class final Lcom/google/ads/interactivemedia/v3/b/f$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/f;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/b/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/f$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 237
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->h(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 238
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->g(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 239
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 244
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->h(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 245
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->g(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 246
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 197
    if-eqz p2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/a/a;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    .line 200
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/f$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V

    .line 229
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne p1, v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/a/a;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    .line 232
    :cond_2
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/b/f;->b(Lcom/google/ads/interactivemedia/v3/b/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/d;-><init>(Lcom/google/ads/interactivemedia/v3/b/s;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/v;)V

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/d;)Lcom/google/ads/interactivemedia/v3/b/d;

    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->d(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->c(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->c(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/v;->a(Lcom/google/ads/interactivemedia/v3/b/v$a;)V

    .line 205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->e(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->d(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->e(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->d(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->c(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 211
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->c(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/v;->b(Lcom/google/ads/interactivemedia/v3/b/v$a;)V

    .line 212
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->e(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->d(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->e(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    goto/16 :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->g(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->g(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    goto/16 :goto_0

    .line 223
    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f$a;->a:Lcom/google/ads/interactivemedia/v3/b/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->destroy()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
