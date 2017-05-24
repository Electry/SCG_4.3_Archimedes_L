.class public Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
.super Landroid/widget/ImageView;
.source "BigCircleSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BigBarView"
.end annotation


# static fields
.field private static final PRESSED_RED_ID:I = 0x1

.field private static final RES_ID:I


# instance fields
.field private CURRENT_STATE:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mSelector:[Landroid/graphics/Bitmap;

.field private resID:[I

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 856
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 857
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    .line 849
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    .line 853
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->resID:[I

    .line 860
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 862
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 863
    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    .line 849
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    .line 853
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->resID:[I

    .line 866
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mPaint:Landroid/graphics/Paint;

    .line 867
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 870
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/4 v1, 0x2

    .line 872
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    .line 873
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    .line 849
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    .line 853
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->resID:[I

    .line 875
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 903
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 917
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 915
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public setCurrentState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 892
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    if-ne p1, v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 895
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->CURRENT_STATE:I

    .line 896
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->invalidate()V

    goto :goto_0
.end method

.method public setDrawableID(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->resID:[I

    aput p1, v1, v2

    .line 886
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 887
    .local v0, "resBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aput-object v0, v1, v2

    .line 888
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->invalidate()V

    .line 889
    return-void
.end method

.method public setPressedDrawableID(I)V
    .locals 3
    .param p1, "pressedid"    # I

    .prologue
    const/4 v2, 0x1

    .line 878
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->resID:[I

    aput p1, v1, v2

    .line 879
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 880
    .local v0, "pressedBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->mSelector:[Landroid/graphics/Bitmap;

    aput-object v0, v1, v2

    .line 881
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->invalidate()V

    .line 882
    return-void
.end method
