.class abstract Lcom/google/android/gms/drive/internal/m$d;
.super Lcom/google/android/gms/drive/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/i",
        "<",
        "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic rp:Lcom/google/android/gms/drive/internal/m;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/m$d;->rp:Lcom/google/android/gms/drive/internal/m;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/m;Lcom/google/android/gms/drive/internal/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/m$d;-><init>(Lcom/google/android/gms/drive/internal/m;)V

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/m$d;->s(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    move-result-object v0

    return-object v0
.end method

.method public s(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/internal/m$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/m$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    return-object v0
.end method
