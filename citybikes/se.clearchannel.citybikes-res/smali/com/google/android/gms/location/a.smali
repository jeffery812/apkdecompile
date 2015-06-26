.class public Lcom/google/android/gms/location/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/b;


# instance fields
.field private final kg:I

.field private final xr:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/a;->CREATOR:Lcom/google/android/gms/location/b;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/a;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/location/a;->xr:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public dB()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/a;->xr:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/a;->CREATOR:Lcom/google/android/gms/location/b;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/a;->kg:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/location/a;->CREATOR:Lcom/google/android/gms/location/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/a;Landroid/os/Parcel;I)V

    return-void
.end method
