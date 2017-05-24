.class public Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;
.super Landroid/widget/RelativeLayout;
.source "MtpFullscreenView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;


# instance fields
.field private mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mImageView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 50
    return-void
.end method


# virtual methods
.method public getImageView()Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mImageView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onBulkCheckedChanged()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onCheckedChanged(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 108
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->setItemChecked(IZ)V

    .line 104
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->setPositionAndBroker(ILcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;)V

    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 79
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f100623

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mImageView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    .line 56
    const v0, 0x7f100624

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    return-void
.end method

.method public setPositionAndBroker(ILcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "b"    # Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->unregisterOnCheckedChangeListener(Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 93
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mPosition:I

    .line 94
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->isItemChecked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->registerOnCheckedChangeListener(Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 99
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 73
    return-void
.end method
