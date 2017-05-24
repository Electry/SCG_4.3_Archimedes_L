.class public Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;
.super Landroid/app/Activity;
.source "WidgetTypeChooser.java"


# instance fields
.field private mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;-><init>(Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f0f06b9

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->setTitle(I)V

    .line 46
    const v2, 0x7f040068

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->setContentView(I)V

    .line 47
    const v2, 0x7f1002ca

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 48
    .local v1, "rg":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 50
    const v2, 0x7f1002ce

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v2, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;-><init>(Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
