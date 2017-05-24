.class public Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;
.super Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView;
.source "GenderFlagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/view/View;

.field private manButton:Landroid/widget/ImageButton;

.field private otherButton:Landroid/widget/ImageButton;

.field private womanButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    .line 13
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    .line 15
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    .line 22
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->mLayout:Landroid/view/View;

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->initView()V

    .line 25
    return-void
.end method


# virtual methods
.method public getManGlagView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getOtherFlagView()Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getWomanFlagView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method initView()V
    .locals 4

    .prologue
    const v3, 0x7f100492

    const/4 v2, 0x4

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->mLayout:Landroid/view/View;

    const v1, 0x7f100493

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->mLayout:Landroid/view/View;

    const v1, 0x7f100494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 38
    :cond_0
    return-void
.end method

.method setGenderType(Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;)V
    .locals 4
    .param p1, "mGender"    # Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 41
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView$1;->$SwitchMap$com$lenovo$scg$gallery3d$facepretty$views$AbstractGenderFlagView$GENDER:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->otherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->womanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/GenderFlagView;->manButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
