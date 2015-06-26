.class public Lcom/google/android/gms/internal/hu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hw;


# instance fields
.field private final DR:[Ljava/lang/String;

.field private final DS:[Ljava/lang/String;

.field private final DT:[Ljava/lang/String;

.field private final DU:Ljava/lang/String;

.field private final DV:Ljava/lang/String;

.field private final DW:Ljava/lang/String;

.field private final DX:Ljava/lang/String;

.field private final jG:Ljava/lang/String;

.field private final kg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hu;->CREATOR:Lcom/google/android/gms/internal/hw;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hu;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hu;->kg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eR()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    return-object v0
.end method

.method public eS()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    return-object v0
.end method

.method public eT()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    return-object v0
.end method

.method public eU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    return-object v0
.end method

.method public eV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    return-object v0
.end method

.method public eW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public eX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/hu;

    if-nez v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/hu;

    .end local p1
    iget v1, p0, Lcom/google/android/gms/internal/hu;->kg:I

    iget v2, p1, Lcom/google/android/gms/internal/hu;->kg:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hu;->kg:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/hu;->kg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DX:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/internal/hu;->kg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->jG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DR:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DT:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hu;Landroid/os/Parcel;I)V

    return-void
.end method
