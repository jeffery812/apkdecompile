.class public Lcom/google/android/gms/internal/me;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mf;


# instance fields
.field final BR:I

.field private final afc:Z

.field private final afd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/me;->CREATOR:Lcom/google/android/gms/internal/mf;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/me;->BR:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/me;->afc:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/me;->afd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/me;->CREATOR:Lcom/google/android/gms/internal/mf;

    const/4 v0, 0x0

    return v0
.end method

.method public mc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/me;->afc:Z

    return v0
.end method

.method public md()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/me;->afd:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/me;->CREATOR:Lcom/google/android/gms/internal/mf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/me;Landroid/os/Parcel;I)V

    return-void
.end method
