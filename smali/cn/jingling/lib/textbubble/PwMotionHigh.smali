.class public Lcn/jingling/lib/textbubble/PwMotionHigh;
.super Lcn/jingling/lib/textbubble/PwMotion;
.source "PwMotionHigh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/PwMotion;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public findPointerIndex(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public getAction()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x106

    if-ne v0, v1, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 38
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_3

    .line 39
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    goto :goto_0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public getX(I)D
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 12
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getXStillDown()D
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 53
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 54
    .local v0, "idx":I
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0, v3}, Lcn/jingling/lib/textbubble/PwMotionHigh;->getX(I)D

    move-result-wide v2

    .line 61
    .end local v0    # "idx":I
    :goto_0
    return-wide v2

    .line 57
    .restart local v0    # "idx":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/PwMotionHigh;->getX(I)D

    move-result-wide v2

    goto :goto_0

    .line 61
    .end local v0    # "idx":I
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v2, v1

    goto :goto_0
.end method

.method public getY(I)D
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getYStillDown()D
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 67
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 68
    .local v0, "idx":I
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, v3}, Lcn/jingling/lib/textbubble/PwMotionHigh;->getY(I)D

    move-result-wide v2

    .line 75
    .end local v0    # "idx":I
    :goto_0
    return-wide v2

    .line 71
    .restart local v0    # "idx":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/PwMotionHigh;->getY(I)D

    move-result-wide v2

    goto :goto_0

    .line 75
    .end local v0    # "idx":I
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/textbubble/PwMotionHigh;->me:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v2, v1

    goto :goto_0
.end method
