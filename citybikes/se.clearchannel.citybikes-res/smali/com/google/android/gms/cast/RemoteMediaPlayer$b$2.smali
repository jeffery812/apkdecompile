.class Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jP:Lcom/google/android/gms/common/api/Status;

.field final synthetic lw:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->lw:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->jP:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;->jP:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
