.class public final Lcom/google/android/gms/internal/hd$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hd$a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ha;


# instance fields
.field private final Bc:Ljava/lang/String;

.field private final Bd:Ljava/lang/String;

.field private final Be:I

.field final kg:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/ha;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hd$a;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/hd$a;->Bd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/hd$a;->Be:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/ha;

    const/4 v0, 0x0

    return v0
.end method

.method public eh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    return-object v0
.end method

.method public ei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->Bd:Ljava/lang/String;

    return-object v0
.end method

.method public ej()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hd$a;->Be:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

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
    instance-of v2, p1, Lcom/google/android/gms/internal/hd$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/hd$a;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->Bd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/hd$a;->Be:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->Bc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "tag"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "callingAppPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->Bd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "callingAppVersionCode"

    iget v2, p0, Lcom/google/android/gms/internal/hd$a;->Be:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/ha;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ha;->a(Lcom/google/android/gms/internal/hd$a;Landroid/os/Parcel;I)V

    return-void
.end method
