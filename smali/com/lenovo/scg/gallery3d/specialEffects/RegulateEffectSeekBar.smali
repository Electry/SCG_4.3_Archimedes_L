.class public Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;
.super Ljava/lang/Object;
.source "RegulateEffectSeekBar.java"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

.field private mCurrentProgress:I

.field private mEveryProgress:I

.field private mMaxProgress:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "maxProgress"    # I
    .param p4, "currentProgress"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-object v2, p1

    .line 27
    check-cast v2, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .line 28
    iput p3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mMaxProgress:I

    .line 29
    iput p4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040187

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10095d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 33
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mMaxProgress:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setMax(I)V

    .line 34
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setProgress(I)V

    .line 35
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->changeEffectBitmap(II)V

    .line 36
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    return-object v0
.end method
