.class public final Lbbc/mobile/news/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AppTheme:[I = null

.field public static final AppTheme_actionbarCompatItemHomeStyle:I = 0x2

.field public static final AppTheme_actionbarCompatItemStyle:I = 0x1

.field public static final AppTheme_actionbarCompatProgressIndicatorStyle:I = 0x3

.field public static final AppTheme_actionbarCompatTitleStyle:I = 0x0

.field public static final BezelImageView:[I = null

.field public static final BezelImageView_borderDrawable:I = 0x1

.field public static final BezelImageView_maskDrawable:I = 0x0

.field public static final LeftAlignedGallery:[I = null

.field public static final LeftAlignedGallery_spacing:I = 0x0

.field public static final PageView:[I = null

.field public static final PageView_alignment:I = 0x7

.field public static final PageView_indicator_height:I = 0x1

.field public static final PageView_indicator_spacing:I = 0x0

.field public static final PageView_indicator_width:I = 0x2

.field public static final PageView_pages:I = 0x4

.field public static final PageView_selected_color:I = 0x5

.field public static final PageView_selected_page:I = 0x3

.field public static final PageView_unselected_color:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 934
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbbc/mobile/news/R$styleable;->AppTheme:[I

    .line 939
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lbbc/mobile/news/R$styleable;->BezelImageView:[I

    .line 942
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010029

    aput v2, v0, v1

    sput-object v0, Lbbc/mobile/news/R$styleable;->LeftAlignedGallery:[I

    .line 944
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lbbc/mobile/news/R$styleable;->PageView:[I

    .line 952
    return-void

    .line 934
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x1t 0x7ft
        0x21t 0x0t 0x1t 0x7ft
        0x22t 0x0t 0x1t 0x7ft
        0x23t 0x0t 0x1t 0x7ft
    .end array-data

    .line 939
    :array_1
    .array-data 0x4
        0x24t 0x0t 0x1t 0x7ft
        0x25t 0x0t 0x1t 0x7ft
    .end array-data

    .line 944
    :array_2
    .array-data 0x4
        0x2at 0x0t 0x1t 0x7ft
        0x2bt 0x0t 0x1t 0x7ft
        0x2ct 0x0t 0x1t 0x7ft
        0x2dt 0x0t 0x1t 0x7ft
        0x2et 0x0t 0x1t 0x7ft
        0x2ft 0x0t 0x1t 0x7ft
        0x30t 0x0t 0x1t 0x7ft
        0x31t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
