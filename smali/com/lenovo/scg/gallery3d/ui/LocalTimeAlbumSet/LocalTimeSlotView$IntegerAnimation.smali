.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "LocalTimeSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerAnimation"
.end annotation


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1276
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 1280
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mCurrent:I

    .line 1282
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mFrom:I

    .line 1284
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mTarget:I

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 1313
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mFrom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mTarget:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mCurrent:I

    .line 1314
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mEnabled:Z

    .line 1315
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1287
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mEnabled:Z

    .line 1288
    return-void
.end method

.method public startAnimateTo(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mEnabled:Z

    if-nez v0, :cond_1

    .line 1292
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mCurrent:I

    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mTarget:I

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mTarget:I

    if-eq p1, v0, :cond_0

    .line 1297
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mCurrent:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mFrom:I

    .line 1298
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->mTarget:I

    .line 1299
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->setDuration(I)V

    .line 1300
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->start()V

    goto :goto_0
.end method
