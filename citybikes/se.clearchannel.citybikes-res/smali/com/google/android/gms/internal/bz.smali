.class public final Lcom/google/android/gms/internal/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bz$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ca;


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final ej:Lcom/google/android/gms/internal/cu;

.field public final em:Lcom/google/android/gms/internal/x;

.field public final hq:Landroid/os/Bundle;

.field public final hr:Lcom/google/android/gms/internal/v;

.field public final hs:Landroid/content/pm/PackageInfo;

.field public final ht:Ljava/lang/String;

.field public final hu:Ljava/lang/String;

.field public final hv:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ca;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bz;->CREATOR:Lcom/google/android/gms/internal/ca;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bz;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bz;->hq:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/bz;->hr:Lcom/google/android/gms/internal/v;

    iput-object p4, p0, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iput-object p5, p0, Lcom/google/android/gms/internal/bz;->adUnitId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bz;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/bz;->hs:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/bz;->ht:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bz;->hu:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bz;->hv:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/bz;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 12

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/bz;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bz$a;Ljava/lang/String;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/bz$a;->hq:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/bz$a;->hr:Lcom/google/android/gms/internal/v;

    iget-object v3, p1, Lcom/google/android/gms/internal/bz$a;->em:Lcom/google/android/gms/internal/x;

    iget-object v4, p1, Lcom/google/android/gms/internal/bz$a;->adUnitId:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/bz$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/google/android/gms/internal/bz$a;->hs:Landroid/content/pm/PackageInfo;

    iget-object v8, p1, Lcom/google/android/gms/internal/bz$a;->hu:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/gms/internal/bz$a;->hv:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/bz$a;->ej:Lcom/google/android/gms/internal/cu;

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/bz;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V

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
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/bz;Landroid/os/Parcel;I)V

    return-void
.end method
