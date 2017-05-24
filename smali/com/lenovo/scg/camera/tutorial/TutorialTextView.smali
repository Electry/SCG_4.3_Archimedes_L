.class public Lcom/lenovo/scg/camera/tutorial/TutorialTextView;
.super Landroid/widget/TextView;
.source "TutorialTextView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private baseX:I

.field private baseY:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSpace:F

.field private mText:Ljava/lang/String;

.field private mTextSize:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseX:I

    .line 17
    const/16 v0, 0x3a

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseY:I

    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseX:I

    .line 17
    const/16 v0, 0x3a

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseY:I

    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseX:I

    .line 17
    const/16 v0, 0x3a

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseY:I

    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mTextSize:F

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method

.method private measureHeight(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 69
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 73
    .local v1, "specSize":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .prologue
    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 90
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 93
    .local v1, "specSize":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mText:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseX:I

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mSpace:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->baseY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDraw exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 64
    return-void
.end method

.method public setParamater(FI)V
    .locals 1
    .param p1, "spaceScale"    # F
    .param p2, "resId"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mTextSize:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mSpace:F

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->mText:Ljava/lang/String;

    .line 121
    return-void
.end method
