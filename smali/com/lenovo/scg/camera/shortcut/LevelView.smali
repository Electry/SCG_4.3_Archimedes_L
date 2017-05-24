.class public Lcom/lenovo/scg/camera/shortcut/LevelView;
.super Landroid/widget/RelativeLayout;
.source "LevelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LevelView"


# instance fields
.field private isThumbHI:Z

.field private isZLevelHI:Z

.field private mBGView:Landroid/widget/ImageView;

.field private mGEventListener:Landroid/hardware/SensorEventListener;

.field private mGSensor:Landroid/hardware/Sensor;

.field private mGSensorManager:Landroid/hardware/SensorManager;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mThumbView:Landroid/widget/ImageView;

.field private mZLevelView:Landroid/widget/ImageView;

.field private myOrientationEventListener:Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    .line 39
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z

    .line 40
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z

    .line 52
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mPreviewRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;-><init>(Lcom/lenovo/scg/camera/shortcut/LevelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->myOrientationEventListener:Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;

    .line 72
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensorManager:Landroid/hardware/SensorManager;

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensor:Landroid/hardware/Sensor;

    .line 75
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/shortcut/LevelView$1;-><init>(Lcom/lenovo/scg/camera/shortcut/LevelView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGEventListener:Landroid/hardware/SensorEventListener;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    .line 39
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z

    .line 40
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z

    .line 52
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mPreviewRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    .line 39
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z

    .line 40
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z

    .line 52
    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mPreviewRect:Landroid/graphics/Rect;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/LevelView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addBGView(Landroid/view/View;)V
    .locals 2
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 192
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v0, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/high16 v1, -0x80000000

    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method private removeBGView(Landroid/view/View;)V
    .locals 0
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->removeView(Landroid/view/View;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->myOrientationEventListener:Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->enable()V

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    const v1, 0x7f020356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    const v1, 0x7f020354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->addBGView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->addBGView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->addBGView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->myOrientationEventListener:Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/LevelView$MyOrientationEventListener;->disable()V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mGSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->removeBGView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mThumbView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->removeBGView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/shortcut/LevelView;->removeBGView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mRect"    # Landroid/graphics/Rect;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView;->mPreviewRect:Landroid/graphics/Rect;

    .line 63
    return-void
.end method
