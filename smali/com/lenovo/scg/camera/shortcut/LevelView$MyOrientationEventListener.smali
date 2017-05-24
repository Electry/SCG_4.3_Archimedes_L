.class Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "LevelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/LevelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field private currentOrientation:I

.field last:J

.field ldelay:J

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

.field thumbCurrentRotation:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/shortcut/LevelView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 206
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    .line 207
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 205
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->currentOrientation:I

    .line 235
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->thumbCurrentRotation:I

    .line 274
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->ldelay:J

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->last:J

    .line 209
    return-void
.end method

.method private roatateThumbView(Landroid/view/View;I)V
    .locals 4
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "neworientation"    # I

    .prologue
    const/4 v3, 0x1

    .line 237
    neg-int v0, p2

    .line 238
    .local v0, "mRotation":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 242
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x5a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 243
    const/16 v0, 0x5a

    .line 246
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, -0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 247
    const/16 v0, 0xb4

    .line 250
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x10e

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 251
    const/16 v0, 0x10e

    .line 255
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->thumbCurrentRotation:I

    if-ne v1, v0, :cond_4

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_4
    if-eqz v0, :cond_5

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$400(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020355

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # setter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z
    invoke-static {v1, v3}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$302(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z

    .line 265
    :goto_1
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$300(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$100(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020357

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    :goto_2
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->thumbCurrentRotation:I

    goto :goto_0

    .line 262
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$400(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020354

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$302(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z

    goto :goto_1

    .line 269
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020356

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private rotateBGView(Landroid/view/View;I)V
    .locals 6
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "neworientation"    # I

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, 0x42b40000    # 90.0f

    .line 213
    add-int/lit8 v1, p2, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    .line 214
    .local v0, "mOriention":I
    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->currentOrientation:I

    if-ne v1, v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 217
    :cond_0
    if-eqz p1, :cond_1

    .line 218
    const-string v1, "LevelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "              "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 221
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 222
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 232
    :cond_1
    :goto_1
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->currentOrientation:I

    goto :goto_0

    .line 223
    :cond_2
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 224
    invoke-virtual {p1, v5}, Landroid/view/View;->setRotation(F)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 227
    :cond_3
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 281
    .local v0, "lnow":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->last:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->ldelay:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$400(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->roatateThumbView(Landroid/view/View;I)V

    .line 283
    iput-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->last:J

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->rotateBGView(Landroid/view/View;I)V

    .line 289
    return-void
.end method
