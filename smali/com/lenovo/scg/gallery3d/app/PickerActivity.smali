.class public Lcom/lenovo/scg/gallery3d/app/PickerActivity;
.super Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.source "PickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_ALBUM_PATH:Ljava/lang/String; = "album-path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1002ce

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->finish()V

    .line 81
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 42
    .local v0, "isDialog":Z
    if-nez v0, :cond_0

    .line 43
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 44
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 47
    :cond_0
    const v2, 0x7f0400a3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->setContentView(I)V

    .line 49
    if-eqz v0, :cond_1

    .line 52
    const v2, 0x7f1002ce

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const v2, 0x7f1005a8

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 60
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100b36

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PickerActivity;->finish()V

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
