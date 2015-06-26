.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final Re:Ljava/lang/String;

.field final Rh:Ljava/lang/String;

.field final Rl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final Rm:Z

.field final Rn:Ljava/lang/String;

.field final Ro:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

.field final Rp:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

.field final Rq:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

.field final Rr:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

.field final Rs:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

.field final Rt:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

.field final Ru:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

.field final Rv:Lcom/google/android/gms/drive/realtime/internal/event/ObjectChangedDetails;

.field final vL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ObjectChangedDetails;)V
    .locals 0
    .parameter "versionCode"
    .parameter "sessionId"
    .parameter "userId"
    .parameter
    .parameter "isLocal"
    .parameter "objectId"
    .parameter "objectType"
    .parameter "textInsertedDetails"
    .parameter "textDeletedDetails"
    .parameter "valuesAddedDetails"
    .parameter "valuesRemovedDetails"
    .parameter "valuesSetDetails"
    .parameter "valueChangedDetails"
    .parameter "referenceShiftedDetails"
    .parameter "objectChangedDetails"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;",
            "Lcom/google/android/gms/drive/realtime/internal/event/ObjectChangedDetails;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, compoundOperationNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->vL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Re:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rl:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rm:Z

    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rn:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ro:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

    iput-object p9, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rp:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

    iput-object p10, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rq:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

    iput-object p11, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rr:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

    iput-object p12, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rs:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

    iput-object p13, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rt:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

    iput-object p14, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ru:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

    iput-object p15, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Rv:Lcom/google/android/gms/drive/realtime/internal/event/ObjectChangedDetails;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/b;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Landroid/os/Parcel;I)V

    return-void
.end method
