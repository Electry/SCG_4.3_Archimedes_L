.class public abstract Lcom/lenovo/scg/common/le3d/Le3dView;
.super Ljava/lang/Object;
.source "Le3dView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CENTER_BOTTOM_CENTER:I = 0x7

.field public static final CENTER_CENTER:I = 0x0

.field public static final CENTER_LEFT_BOTTOM:I = 0x6

.field public static final CENTER_LEFT_CENTER:I = 0x4

.field public static final CENTER_LEFT_TOP:I = 0x1

.field public static final CENTER_RIGHT_BOTTOM:I = 0x8

.field public static final CENTER_RIGHT_CENTER:I = 0x5

.field public static final CENTER_RIGHT_TOP:I = 0x3

.field public static final CENTER_TOP_CENTER:I = 0x2

.field public static EVENT_ABILITY_CLICKED:I


# instance fields
.field protected mAlpha:F

.field protected mCenterX:F

.field protected mCenterXInScreen:F

.field protected mCenterY:F

.field protected mCenterYInScreen:F

.field protected mCenterZ:F

.field private mClickPaddingHeight:I

.field private mClickPaddingWidth:I

.field protected mClipBottom:F

.field protected mClipLeft:F

.field protected mClipRect:[F

.field protected mClipRight:F

.field protected mClipTop:F

.field protected mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

.field protected mEventAbility:I

.field private mEventListener:Lcom/lenovo/scg/common/le3d/EventListener;

.field protected mHeight:F

.field protected mID:I

.field protected final mMatrixValues:[F

.field protected mModleView:[F

.field protected mRotateX:F

.field protected mRotateY:F

.field protected mRotateZ:F

.field protected mScaleX:F

.field protected mScaleY:F

.field protected mScaleZ:F

.field private final mTempMatrix:[F

.field protected mTranslateX:F

.field protected mTranslateY:F

.field protected mTranslateZ:F

.field protected mVisible:Z

.field protected mWidth:F

.field protected mX:F

.field protected mY:F

.field protected mYuvClipEx:F

.field protected mYuvClipEy:F

.field protected mYuvClipSx:F

.field protected mYuvClipSy:F

.field protected mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11
    const-class v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/common/le3d/Le3dView;->$assertionsDisabled:Z

    .line 87
    sput v1, Lcom/lenovo/scg/common/le3d/Le3dView;->EVENT_ABILITY_CLICKED:I

    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 4
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    const/16 v3, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mID:I

    .line 33
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    .line 35
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTempMatrix:[F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mVisible:Z

    .line 71
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleX:F

    .line 73
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleY:F

    .line 75
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleZ:F

    .line 77
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mAlpha:F

    .line 83
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    .line 95
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    .line 97
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    .line 99
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipRight:F

    .line 101
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    .line 104
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipSx:F

    .line 106
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipSy:F

    .line 108
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipEx:F

    .line 110
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipEy:F

    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->setIdentity()V

    .line 117
    return-void
.end method

.method private resetViewPoint([FFF)[F
    .locals 3
    .param p1, "point"    # [F
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F

    .prologue
    .line 622
    cmpl-float v2, p2, p3

    if-lez v2, :cond_0

    .line 623
    move v1, p2

    .line 624
    .local v1, "x":F
    move p2, p3

    .line 625
    move p3, v1

    .line 627
    .end local v1    # "x":F
    :cond_0
    if-eqz p1, :cond_3

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 629
    aget v2, p1, v0

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    .line 630
    aput p2, p1, v0

    .line 628
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_2
    aget v2, p1, v0

    cmpl-float v2, v2, p3

    if-lez v2, :cond_1

    .line 632
    aput p3, p1, v0

    goto :goto_1

    .line 636
    .end local v0    # "i":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method public addEventAbility(I)V
    .locals 1
    .param p1, "ability"    # I

    .prologue
    .line 660
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    .line 661
    return-void
.end method

.method public changeCenter(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslate()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    .line 274
    .local v1, "transPos":Lcom/lenovo/scg/common/le3d/Position;
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenter()Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v0

    .line 275
    .local v0, "centerPos":Lcom/lenovo/scg/common/le3d/Position;
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 276
    iget v2, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    iget v3, v0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    add-float/2addr v2, v3

    sub-float/2addr v2, p1

    iget v3, v1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    iget v4, v0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    add-float/2addr v3, v4

    sub-float/2addr v3, p2

    iget v4, v1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    iget v5, v0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    add-float/2addr v4, v5

    sub-float/2addr v4, p3

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 277
    return-void
.end method

.method public changeCenter(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "centerX":F
    const/4 v1, 0x0

    .line 282
    .local v1, "centerY":F
    const/4 v2, 0x0

    .line 283
    .local v2, "centerZ":F
    packed-switch p1, :pswitch_data_0

    .line 330
    sget-boolean v3, Lcom/lenovo/scg/common/le3d/Le3dView;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 285
    :pswitch_0
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 286
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 287
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->changeCenter(FFF)V

    .line 334
    return-void

    .line 290
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    .line 291
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float v1, v3, v4

    .line 292
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 293
    goto :goto_0

    .line 295
    :pswitch_2
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 296
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float v1, v3, v4

    .line 297
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 298
    goto :goto_0

    .line 300
    :pswitch_3
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float v0, v3, v4

    .line 301
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float v1, v3, v4

    .line 302
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 303
    goto :goto_0

    .line 305
    :pswitch_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    .line 306
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 307
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 308
    goto :goto_0

    .line 310
    :pswitch_5
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float v0, v3, v4

    .line 311
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 312
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 313
    goto :goto_0

    .line 315
    :pswitch_6
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    .line 316
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    .line 317
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 318
    goto :goto_0

    .line 320
    :pswitch_7
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 321
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    .line 322
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 323
    goto :goto_0

    .line 325
    :pswitch_8
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float v0, v3, v4

    .line 326
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    .line 327
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    .line 328
    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public clickTest(FF)Z
    .locals 48
    .param p1, "clickX"    # F
    .param p2, "clickY"    # F

    .prologue
    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventAbility()I

    move-result v1

    sget v2, Lcom/lenovo/scg/common/le3d/Le3dView;->EVENT_ABILITY_CLICKED:I

    and-int/2addr v1, v2

    if-gtz v1, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 618
    :goto_0
    return v1

    .line 582
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleFactor()F

    move-result v42

    .line 583
    .local v42, "fac":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    add-float v45, v1, v2

    .line 584
    .local v45, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    add-float v46, v1, v2

    .line 585
    .local v46, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    add-float v47, v1, v2

    .line 590
    .local v47, "z":F
    const/4 v1, 0x3

    new-array v10, v1, [F

    .line 591
    .local v10, "point1":[F
    const/4 v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v20, v0

    .line 592
    .local v20, "point2":[F
    const/4 v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v30, v0

    .line 593
    .local v30, "point3":[F
    const/4 v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v40, v0

    .line 594
    .local v40, "point4":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getProject()[F

    move-result-object v43

    .line 595
    .local v43, "project":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getViewPort()[I

    move-result-object v44

    .line 596
    .local v44, "viewport":[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingWidth:I

    int-to-float v1, v1

    sub-float v1, v45, v1

    div-float v1, v1, v42

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingHeight:I

    int-to-float v2, v2

    sub-float v2, v46, v2

    div-float v2, v2, v42

    div-float v3, v47, v42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getProject()[F

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v8}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getViewPort()[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 598
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingWidth:I

    int-to-float v1, v1

    add-float v1, v1, v45

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    add-float/2addr v1, v2

    div-float v11, v1, v42

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingHeight:I

    int-to-float v1, v1

    sub-float v1, v46, v1

    div-float v12, v1, v42

    div-float v13, v47, v42

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getProject()[F

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getViewPort()[I

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v11 .. v21}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 600
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingWidth:I

    int-to-float v1, v1

    add-float v1, v1, v45

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    add-float/2addr v1, v2

    div-float v21, v1, v42

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingHeight:I

    int-to-float v1, v1

    add-float v1, v1, v46

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    add-float/2addr v1, v2

    div-float v22, v1, v42

    div-float v23, v47, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getProject()[F

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getViewPort()[I

    move-result-object v28

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v31}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 602
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingWidth:I

    int-to-float v1, v1

    sub-float v1, v45, v1

    div-float v31, v1, v42

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingHeight:I

    int-to-float v1, v1

    add-float v1, v1, v46

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    add-float/2addr v1, v2

    div-float v32, v1, v42

    div-float v33, v47, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getProject()[F

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getViewPort()[I

    move-result-object v38

    const/16 v39, 0x0

    const/16 v41, 0x0

    invoke-static/range {v31 .. v41}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 606
    const/4 v1, 0x4

    new-array v3, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v10, v2

    aput v2, v3, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget v2, v20, v2

    aput v2, v3, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aget v2, v30, v2

    aput v2, v3, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget v2, v40, v2

    aput v2, v3, v1

    .line 607
    .local v3, "xp":[F
    const/4 v1, 0x4

    new-array v4, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget v2, v10, v2

    aput v2, v4, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v20, v2

    aput v2, v4, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v2, v30, v2

    aput v2, v4, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    aget v2, v40, v2

    aput v2, v4, v1

    .line 610
    .local v4, "yp":[F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipRight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 611
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipRight:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->resetViewPoint([FFF)[F

    move-result-object v3

    .line 613
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 614
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->resetViewPoint([FFF)[F

    move-result-object v4

    .line 618
    :cond_4
    const/4 v2, 0x4

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->pnpoly(I[F[FFF)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public abstract destory()V
.end method

.method public draw()V
    .locals 5

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mVisible:Z

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->save()V

    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipRight:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setClipRect(FFFF)V

    .line 478
    const-string/jumbo v0, "ttt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipLeft ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mClipTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->onDraw()V

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mAlpha:F

    return v0
.end method

.method public getCenter()Lcom/lenovo/scg/common/le3d/Position;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lcom/lenovo/scg/common/le3d/Position;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    return-object v0
.end method

.method public getCenterXInScreen()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterXInScreen:F

    return v0
.end method

.method public getCenterYInScreen()F
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterYInScreen:F

    return v0
.end method

.method public getEventAbility()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    return v0
.end method

.method public getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventListener:Lcom/lenovo/scg/common/le3d/EventListener;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mID:I

    return v0
.end method

.method public getMatrix([F)V
    .locals 3
    .param p1, "outMatrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/16 v1, 0x10

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-void
.end method

.method public getMatrix()[F
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    return-object v0
.end method

.method public getRotateX()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateX:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateY:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateZ:F

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleY:F

    return v0
.end method

.method public getScaleZ()F
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleZ:F

    return v0
.end method

.method protected getScreenHeight()F
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getScreenWidth()F
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTranslate()Lcom/lenovo/scg/common/le3d/Position;
    .locals 4

    .prologue
    .line 382
    new-instance v0, Lcom/lenovo/scg/common/le3d/Position;

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateX()F

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateY()F

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateZ()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    return-object v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateY:F

    return v0
.end method

.method public getTranslateZ()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateZ:F

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mVisible:Z

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    return v0
.end method

.method public initClipRect(FFFF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 679
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v1

    .line 680
    .local v0, "screenHeight":F
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipLeft:F

    .line 681
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipRight:F

    .line 682
    cmpg-float v1, p2, v3

    if-gez v1, :cond_0

    .line 683
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    .line 687
    :goto_0
    cmpg-float v1, p4, v3

    if-gez v1, :cond_1

    .line 688
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    .line 692
    :goto_1
    return-void

    .line 685
    :cond_0
    sub-float v1, v0, p2

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipTop:F

    goto :goto_0

    .line 690
    :cond_1
    sub-float v1, v0, p4

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClipBottom:F

    goto :goto_1
.end method

.method public loadMatrix()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->multMatrixf([FI)V

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->saveModelViewMatrix()V

    .line 185
    return-void
.end method

.method protected multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTempMatrix:[F

    .line 177
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 178
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    return-void
.end method

.method public abstract onDraw()V
.end method

.method public onMoveInScreen(FF)V
    .locals 3
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 533
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterXInScreen:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterXInScreen:F

    .line 534
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterYInScreen:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterYInScreen:F

    .line 535
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateY()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateZ()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 536
    return-void
.end method

.method protected pnpoly(I[F[FFF)Z
    .locals 7
    .param p1, "npol"    # I
    .param p2, "xp"    # [F
    .param p3, "yp"    # [F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "c":Z
    const/4 v1, 0x0

    .local v1, "i":I
    add-int/lit8 v3, p1, -0x1

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 650
    aget v4, p3, v2

    cmpg-float v4, v4, p5

    if-gtz v4, :cond_0

    aget v4, p3, v3

    cmpg-float v4, p5, v4

    if-ltz v4, :cond_1

    :cond_0
    aget v4, p3, v3

    cmpg-float v4, v4, p5

    if-gtz v4, :cond_2

    aget v4, p3, v2

    cmpg-float v4, p5, v4

    if-gez v4, :cond_2

    :cond_1
    aget v4, p2, v3

    aget v5, p2, v2

    sub-float/2addr v4, v5

    aget v5, p3, v2

    sub-float v5, p5, v5

    mul-float/2addr v4, v5

    aget v5, p3, v3

    aget v6, p3, v2

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    aget v5, p2, v2

    add-float/2addr v4, v5

    cmpg-float v4, p4, v4

    if-gez v4, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 649
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v3, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 650
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 652
    :cond_4
    return v0
.end method

.method public removeEventAbility(I)V
    .locals 2
    .param p1, "ability"    # I

    .prologue
    .line 664
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    .line 665
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->requestRender()V

    .line 495
    :cond_0
    return-void
.end method

.method public resetCenterPointInScreen()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 672
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterXInScreen:F

    .line 673
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterYInScreen:F

    .line 674
    return-void
.end method

.method protected rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 168
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 170
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 171
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected saveModelViewMatrix()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mModleView:[F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getModelView([F)V

    .line 565
    return-void
.end method

.method protected scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 165
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 444
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mAlpha:F

    .line 445
    return-void
.end method

.method public setCenter(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 206
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 207
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 208
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    .line 209
    return-void
.end method

.method public setCenter(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 267
    sget-boolean v0, Lcom/lenovo/scg/common/le3d/Le3dView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :pswitch_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 223
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 224
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 228
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 229
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 232
    :pswitch_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 233
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 234
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 237
    :pswitch_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 238
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 239
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 242
    :pswitch_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 243
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 244
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 247
    :pswitch_5
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 248
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 249
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 252
    :pswitch_6
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 253
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 254
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 257
    :pswitch_7
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 258
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 259
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto :goto_0

    .line 262
    :pswitch_8
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterX:F

    .line 263
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mY:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterY:F

    .line 264
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mZ:F

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterZ:F

    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setCenter(Lcom/lenovo/scg/common/le3d/Position;)V
    .locals 3
    .param p1, "pos"    # Lcom/lenovo/scg/common/le3d/Position;

    .prologue
    .line 212
    iget v0, p1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    iget v1, p1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    iget v2, p1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 213
    return-void
.end method

.method public setCenterPointInScreen(FF)V
    .locals 5
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 517
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v2

    .line 518
    .local v1, "screenWidth":F
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v2

    .line 519
    .local v0, "screenHeight":F
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterXInScreen:F

    .line 520
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mCenterYInScreen:F

    .line 521
    neg-float v2, v1

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    div-float v3, v0, v3

    sub-float/2addr v3, p2

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateZ:F

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 522
    return-void
.end method

.method public setClickPaddingRegin(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 568
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingWidth:I

    .line 569
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mClickPaddingHeight:I

    .line 570
    return-void
.end method

.method public setEventAbility(I)V
    .locals 0
    .param p1, "ability"    # I

    .prologue
    .line 656
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventAbility:I

    .line 657
    return-void
.end method

.method public setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/le3d/EventListener;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mEventListener:Lcom/lenovo/scg/common/le3d/EventListener;

    .line 465
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mID:I

    .line 125
    return-void
.end method

.method protected setIdentity()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    .line 141
    .local v0, "matrix":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 142
    return-void
.end method

.method public setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 189
    return-void
.end method

.method public setMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-void
.end method

.method public setRotateX(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 398
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateX:F

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->updateMatrix()V

    .line 400
    return-void
.end method

.method public setRotateY(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 403
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateY:F

    .line 404
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->updateMatrix()V

    .line 405
    return-void
.end method

.method public setRotateZ(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 408
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateZ:F

    .line 409
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->updateMatrix()V

    .line 410
    return-void
.end method

.method public setScale(FFF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 425
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleX:F

    .line 426
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleY:F

    .line 427
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleZ:F

    .line 428
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->updateMatrix()V

    .line 429
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 337
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mWidth:F

    .line 338
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mHeight:F

    .line 339
    return-void
.end method

.method public setTranslate(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 371
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateX:F

    .line 372
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateY:F

    .line 373
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateZ:F

    .line 374
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->updateMatrix()V

    .line 375
    return-void
.end method

.method public setTranslate(Lcom/lenovo/scg/common/le3d/Position;)V
    .locals 3
    .param p1, "pos"    # Lcom/lenovo/scg/common/le3d/Position;

    .prologue
    .line 378
    iget v0, p1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    iget v1, p1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    iget v2, p1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 379
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mVisible:Z

    .line 133
    return-void
.end method

.method public setYuvViewClipRect(FFFF)V
    .locals 2
    .param p1, "clipSx"    # F
    .param p2, "clipSy"    # F
    .param p3, "clipEx"    # F
    .param p4, "clipEy"    # F

    .prologue
    .line 695
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v1

    .line 696
    .local v0, "screenHeight":F
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipSx:F

    .line 697
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipEx:F

    .line 698
    sub-float v1, v0, p2

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipSy:F

    .line 699
    sub-float v1, v0, p4

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mYuvClipEy:F

    .line 700
    return-void
.end method

.method protected translate(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleFactor()F

    move-result v0

    .line 154
    .local v0, "fac":F
    div-float/2addr p1, v0

    .line 155
    div-float/2addr p2, v0

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    .line 157
    .local v1, "m":[F
    const/16 v2, 0xc

    aget v3, v1, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 158
    const/16 v2, 0xd

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 159
    const/16 v2, 0xe

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 160
    const/16 v2, 0xf

    aget v3, v1, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x7

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 161
    return-void
.end method

.method protected translate(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleFactor()F

    move-result v0

    .line 146
    .local v0, "fac":F
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mMatrixValues:[F

    const/4 v2, 0x0

    div-float v3, p1, v0

    div-float v4, p2, v0

    div-float v5, p3, v0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 147
    return-void
.end method

.method protected updateMatrix()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dView;->setIdentity()V

    .line 363
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateY:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mTranslateZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->translate(FFF)V

    .line 364
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateX:F

    invoke-virtual {p0, v0, v4, v3, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->rotate(FFFF)V

    .line 365
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateY:F

    invoke-virtual {p0, v0, v3, v4, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->rotate(FFFF)V

    .line 366
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mRotateZ:F

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dView;->rotate(FFFF)V

    .line 367
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleX:F

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleY:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dView;->mScaleZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->scale(FFF)V

    .line 368
    return-void
.end method
