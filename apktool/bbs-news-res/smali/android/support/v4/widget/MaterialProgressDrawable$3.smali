.class Landroid/support/v4/widget/MaterialProgressDrawable$3;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x401921fb54442d18L

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 338
    .local v5, minProgressArc:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    .line 339
    .local v8, startingEndTrim:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    .line 340
    .local v10, startingTrim:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    .line 343
    .local v9, startingRotation:F
    const v11, 0x3f4ccccd

    sub-float v4, v11, v5

    .line 344
    .local v4, minArc:F
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v11, v4

    add-float v2, v8, v11

    .line 346
    .local v2, endTrim:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 348
    const v11, 0x3f4ccccd

    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$500()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 351
    .local v7, startTrim:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v7}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 353
    const/high16 v11, 0x3e80

    mul-float v11, v11, p1

    add-float v6, v9, v11

    .line 354
    .local v6, rotation:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 356
    const/high16 v11, 0x4310

    mul-float v11, v11, p1

    const/high16 v12, 0x4434

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    #getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$600(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v13

    const/high16 v14, 0x40a0

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 358
    .local v3, groupRotation:F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v11, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 359
    return-void
.end method
