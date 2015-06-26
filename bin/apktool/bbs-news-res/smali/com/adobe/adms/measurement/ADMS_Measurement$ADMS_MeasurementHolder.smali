.class Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;
.super Ljava/lang/Object;
.source "ADMS_Measurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/measurement/ADMS_Measurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ADMS_MeasurementHolder"
.end annotation


# static fields
.field public static baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;-><init>(Lcom/adobe/adms/measurement/ADMS_Measurement$1;)V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;->baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
