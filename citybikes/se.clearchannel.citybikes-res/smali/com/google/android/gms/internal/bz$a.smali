.class public final Lcom/google/android/gms/internal/bz$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final ej:Lcom/google/android/gms/internal/cu;

.field public final em:Lcom/google/android/gms/internal/x;

.field public final hq:Landroid/os/Bundle;

.field public final hr:Lcom/google/android/gms/internal/v;

.field public final hs:Landroid/content/pm/PackageInfo;

.field public final hu:Ljava/lang/String;

.field public final hv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bz$a;->hq:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/bz$a;->hr:Lcom/google/android/gms/internal/v;

    iput-object p3, p0, Lcom/google/android/gms/internal/bz$a;->em:Lcom/google/android/gms/internal/x;

    iput-object p4, p0, Lcom/google/android/gms/internal/bz$a;->adUnitId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bz$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/internal/bz$a;->hs:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/bz$a;->hu:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/bz$a;->hv:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bz$a;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method
