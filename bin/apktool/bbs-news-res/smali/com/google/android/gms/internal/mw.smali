.class public Lcom/google/android/gms/internal/mw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mx;


# instance fields
.field public final Dv:Ljava/lang/String;

.field public final ahY:Ljava/lang/String;

.field public final ahZ:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mw;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mw;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    const/4 v0, 0x0

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
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/mw;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mw;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "clientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->ahZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/internal/mw;->Dv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/mw;->CREATOR:Lcom/google/android/gms/internal/mx;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mx;->a(Lcom/google/android/gms/internal/mw;Landroid/os/Parcel;I)V

    return-void
.end method
