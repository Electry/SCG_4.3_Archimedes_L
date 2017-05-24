.class public Lcom/lenovo/scg/camera/setting/view/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private angle:F

.field private name:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->angle:F

    .line 21
    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->position:I

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/R$styleable;->CircleImageView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->name:Ljava/lang/String;

    .line 53
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->angle:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->position:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->angle:F

    .line 70
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->position:I

    .line 86
    return-void
.end method
