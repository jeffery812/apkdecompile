.class public Lcom/google/android/gms/fitness/request/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/ae$1;,
        Lcom/google/android/gms/fitness/request/ae$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final UH:Lcom/google/android/gms/fitness/data/Subscription;

.field private final UI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/af;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Subscription;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ae;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ae;->UH:Lcom/google/android/gms/fitness/data/Subscription;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/ae;->UI:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/ae$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/ae;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/ae$a;->a(Lcom/google/android/gms/fitness/request/ae$a;)Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ae;->UH:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/ae$a;->b(Lcom/google/android/gms/fitness/request/ae$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/ae;->UI:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/ae$a;Lcom/google/android/gms/fitness/request/ae$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/ae;-><init>(Lcom/google/android/gms/fitness/request/ae$a;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ae;->BR:I

    return v0
.end method

.method public jB()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ae;->UH:Lcom/google/android/gms/fitness/data/Subscription;

    return-object v0
.end method

.method public jC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/ae;->UI:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/ae;->UH:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/af;->a(Lcom/google/android/gms/fitness/request/ae;Landroid/os/Parcel;I)V

    return-void
.end method
