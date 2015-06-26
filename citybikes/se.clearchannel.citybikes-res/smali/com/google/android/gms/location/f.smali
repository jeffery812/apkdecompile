.class public Lcom/google/android/gms/location/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/g;


# instance fields
.field private final kg:I

.field private final xJ:Ljava/lang/String;

.field private final xr:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/f;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dB()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/location/f;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/f;->kg:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/location/f;Landroid/os/Parcel;I)V

    return-void
.end method
