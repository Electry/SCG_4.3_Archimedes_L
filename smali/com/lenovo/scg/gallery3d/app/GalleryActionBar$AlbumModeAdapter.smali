.class Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumModeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$300(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$200(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$300(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 165
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$200(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 173
    check-cast v0, Landroid/widget/TwoLineListItem;

    .line 174
    .local v0, "view":Landroid/widget/TwoLineListItem;
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText1()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$400(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-object p2
.end method
