.class public Lcom/google/android/gms/drive/query/internal/Operator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            ">;"
        }
    .end annotation
.end field

.field public static final sd:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final se:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sf:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sg:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sh:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final si:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sj:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sk:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final sl:Lcom/google/android/gms/drive/query/internal/Operator;


# instance fields
.field final kg:I

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sd:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "<"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->se:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "<="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sf:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, ">"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sg:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, ">="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sh:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->si:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sj:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "not"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sk:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "contains"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->sl:Lcom/google/android/gms/drive/query/internal/Operator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "versionCode"
    .parameter "tag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/Operator;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

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
    check-cast p1, Lcom/google/android/gms/drive/query/internal/Operator;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/h;->a(Lcom/google/android/gms/drive/query/internal/Operator;Landroid/os/Parcel;I)V

    return-void
.end method
