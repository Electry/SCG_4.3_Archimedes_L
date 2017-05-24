.class public Lcom/lenovo/scg/photos/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field private mMultiChoiceManager:Lcom/lenovo/scg/photos/MultiChoiceManager;

.field private mTabsAdapter:Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/photos/GalleryActivity;)Lcom/lenovo/scg/photos/MultiChoiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/GalleryActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mMultiChoiceManager:Lcom/lenovo/scg/photos/MultiChoiceManager;

    return-object v0
.end method


# virtual methods
.method public getMultiChoiceManager()Lcom/lenovo/scg/photos/MultiChoiceManager;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mMultiChoiceManager:Lcom/lenovo/scg/photos/MultiChoiceManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v1, Lcom/lenovo/scg/photos/MultiChoiceManager;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/photos/MultiChoiceManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mMultiChoiceManager:Lcom/lenovo/scg/photos/MultiChoiceManager;

    .line 49
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f100028

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/photos/GalleryActivity;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "ab":Landroid/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 56
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    new-instance v1, Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;-><init>(Lcom/lenovo/scg/photos/GalleryActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mTabsAdapter:Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mTabsAdapter:Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0f05b9

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/photos/PhotoSetFragment;

    invoke-virtual {v1, v2, v3, v5}, Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/photos/GalleryActivity;->mTabsAdapter:Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0f05ba

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/photos/AlbumSetFragment;

    invoke-virtual {v1, v2, v3, v5}, Lcom/lenovo/scg/photos/GalleryActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string/jumbo v1, "tab"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/GalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 83
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7f100b15
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string/jumbo v0, "tab"

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-void
.end method
