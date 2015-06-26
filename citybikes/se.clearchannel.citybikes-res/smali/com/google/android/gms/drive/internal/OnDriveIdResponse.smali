.class public Lcom/google/android/gms/drive/internal/OnDriveIdResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnDriveIdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final kg:I

.field rr:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/t;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0
    .parameter "versionCode"
    .parameter "driveId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->rr:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->rr:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/t;->a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;Landroid/os/Parcel;I)V

    return-void
.end method
