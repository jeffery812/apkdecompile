.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bl;


# instance fields
.field public final ej:Lcom/google/android/gms/internal/cu;

.field public final gG:Lcom/google/android/gms/internal/bj;

.field public final gH:Lcom/google/android/gms/internal/q;

.field public final gI:Lcom/google/android/gms/internal/bn;

.field public final gJ:Lcom/google/android/gms/internal/cw;

.field public final gK:Lcom/google/android/gms/internal/al;

.field public final gL:Ljava/lang/String;

.field public final gM:Z

.field public final gN:Ljava/lang/String;

.field public final gO:Lcom/google/android/gms/internal/bq;

.field public final gP:I

.field public final go:Ljava/lang/String;

.field public final orientation:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bm;->CREATOR:Lcom/google/android/gms/internal/bl;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bj;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/q;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bn;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cw;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/al;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object p7, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bq;

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    iput p11, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    iput p12, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cw;ZILjava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    iput-object p5, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    iput p7, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object p8, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cw;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    iput-object p5, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object p9, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    iput p7, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cw;ILcom/google/android/gms/internal/cu;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    iput-object p4, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    iput p5, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    iput v2, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/cw;ZILcom/google/android/gms/internal/cu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    iput-object p4, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    iput p6, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bm;->gP:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bm;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/bm;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method aa()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->gH:Lcom/google/android/gms/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ab()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->gI:Lcom/google/android/gms/internal/bn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ac()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->gJ:Lcom/google/android/gms/internal/cw;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ad()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->gK:Lcom/google/android/gms/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ae()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->gO:Lcom/google/android/gms/internal/bq;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bl;->a(Lcom/google/android/gms/internal/bm;Landroid/os/Parcel;I)V

    return-void
.end method
