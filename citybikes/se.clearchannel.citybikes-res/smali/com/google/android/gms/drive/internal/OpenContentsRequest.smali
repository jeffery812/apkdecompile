.class public Lcom/google/android/gms/drive/internal/OpenContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OpenContentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final kg:I

.field final qF:I

.field final rr:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
    .locals 0
    .parameter "versionCode"
    .parameter "id"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->rr:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->qF:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1
    .parameter "id"
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(ILcom/google/android/gms/drive/DriveId;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/w;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
