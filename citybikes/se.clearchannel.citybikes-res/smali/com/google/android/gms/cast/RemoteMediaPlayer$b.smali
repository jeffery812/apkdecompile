.class abstract Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.super Lcom/google/android/gms/cast/Cast$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/Cast$a",
        "<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field lv:Lcom/google/android/gms/internal/dn;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->lv:Lcom/google/android/gms/internal/dn;

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
