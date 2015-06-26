.class public Lcom/google/android/gms/internal/kf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kf$e;,
        Lcom/google/android/gms/internal/kf$c;,
        Lcom/google/android/gms/internal/kf$d;,
        Lcom/google/android/gms/internal/kf$b;,
        Lcom/google/android/gms/internal/kf$a;
    }
.end annotation


# static fields
.field public static final Ql:Lcom/google/android/gms/internal/kf$a;

.field public static final Qm:Lcom/google/android/gms/internal/kf$b;

.field public static final Qn:Lcom/google/android/gms/internal/kf$d;

.field public static final Qo:Lcom/google/android/gms/internal/kf$c;

.field public static final Qp:Lcom/google/android/gms/internal/kf$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/kf$a;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/kf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/kf;->Ql:Lcom/google/android/gms/internal/kf$a;

    new-instance v0, Lcom/google/android/gms/internal/kf$b;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/kf$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/kf;->Qm:Lcom/google/android/gms/internal/kf$b;

    new-instance v0, Lcom/google/android/gms/internal/kf$d;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/kf$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/kf;->Qn:Lcom/google/android/gms/internal/kf$d;

    new-instance v0, Lcom/google/android/gms/internal/kf$c;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/kf$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/kf;->Qo:Lcom/google/android/gms/internal/kf$c;

    new-instance v0, Lcom/google/android/gms/internal/kf$e;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/kf$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/kf;->Qp:Lcom/google/android/gms/internal/kf$e;

    return-void
.end method
