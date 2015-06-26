.class abstract Lcom/google/android/gms/drive/internal/h$h;
.super Lcom/google/android/gms/drive/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/i",
        "<",
        "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic rc:Lcom/google/android/gms/drive/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/h$h;->rc:Lcom/google/android/gms/drive/internal/h;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/h$h;->o(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/internal/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/h$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    return-object v0
.end method
