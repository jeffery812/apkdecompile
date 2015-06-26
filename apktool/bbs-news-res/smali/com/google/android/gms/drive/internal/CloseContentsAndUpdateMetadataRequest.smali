.class public Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final NV:Lcom/google/android/gms/drive/DriveId;

.field final NW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final NX:Lcom/google/android/gms/drive/Contents;

.field final NY:I

.field final Nf:Ljava/lang/String;

.field final Ng:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;I)V
    .locals 0
    .parameter "versionCode"
    .parameter "id"
    .parameter "metadataChangeSet"
    .parameter "contentsReference"
    .parameter "notifyOnCompletion"
    .parameter "trackingTag"
    .parameter "commitStrategy"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->NV:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->NW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->NX:Lcom/google/android/gms/drive/Contents;

    iput-boolean p5, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Ng:Z

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->Nf:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->NY:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 8
    .parameter "id"
    .parameter "metadataChangeSet"
    .parameter "contentsReference"
    .parameter "executionOptions"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->hP()Z

    move-result v5

    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->hO()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->hQ()I

    move-result v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;ZLjava/lang/String;I)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/e;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
