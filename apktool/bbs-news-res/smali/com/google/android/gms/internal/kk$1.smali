.class final Lcom/google/android/gms/internal/kk$1;
.super Ljava/util/HashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kk$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
