.class public Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final RF:Ljava/lang/String;

.field final RG:I

.field final Rj:I

.field final Rk:I

.field final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/h;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0
    .parameter "versionCode"
    .parameter "index"
    .parameter "valueIndex"
    .parameter "valueCount"
    .parameter "movedFromId"
    .parameter "movedFromIndex"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->BR:I

    iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->Rj:I

    iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->Rk:I

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->RF:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->RG:I

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/h;->a(Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
