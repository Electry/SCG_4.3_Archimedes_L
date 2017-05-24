.class public Lcn/jingling/lib/textbubble/PwMotion;
.super Ljava/lang/Object;
.source "PwMotion.java"


# instance fields
.field protected me:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public findPointerIndex(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getRawX()F
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    return v0
.end method

.method public getRawY()F
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    return v0
.end method

.method public getX(I)D
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getXStillDown()D
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY(I)D
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getYStillDown()D
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 12
    iput-object p1, p0, Lcn/jingling/lib/textbubble/PwMotion;->me:Landroid/view/MotionEvent;

    .line 13
    return-void
.end method
