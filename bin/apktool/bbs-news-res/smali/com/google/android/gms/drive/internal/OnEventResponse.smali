.class public Lcom/google/android/gms/drive/internal/OnEventResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnEventResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final NS:I

.field final Pk:Lcom/google/android/gms/drive/events/ChangeEvent;

.field final Pl:Lcom/google/android/gms/drive/events/CompletionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/am;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;)V
    .locals 0
    .parameter "versionCode"
    .parameter "eventType"
    .parameter "changeEvent"
    .parameter "completionEvent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->BR:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->NS:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Pk:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Pl:Lcom/google/android/gms/drive/events/CompletionEvent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ih()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->NS:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->NS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Pk:Lcom/google/android/gms/drive/events/ChangeEvent;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Pl:Lcom/google/android/gms/drive/events/CompletionEvent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/am;->a(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V

    return-void
.end method
