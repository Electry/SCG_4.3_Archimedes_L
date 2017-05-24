.class public abstract Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
.super Ljava/lang/Object;
.source "DebugItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$1;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;
    }
.end annotation


# static fields
.field public static final COLOR_ERROR_SUMMARY:I

.field public static final COLOR_ERROR_TITLE:I

.field public static final COLOR_NORMAL_SUMMARY:I

.field public static final COLOR_NORMAL_TITLE:I

.field public static final COLOR_WARN_SUMMARY:I

.field public static final COLOR_WARN_TITLE:I


# instance fields
.field protected level:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

.field protected summary:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "#191919"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_NORMAL_TITLE:I

    .line 13
    const-string v0, "#808080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_NORMAL_SUMMARY:I

    .line 14
    const-string v0, "#ff9900"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_WARN_TITLE:I

    .line 15
    const-string v0, "#ff9933"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_WARN_SUMMARY:I

    .line 16
    const-string v0, "#ff0033"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_ERROR_TITLE:I

    .line 17
    const-string v0, "#ff0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_ERROR_SUMMARY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->level:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->level:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->summary:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->title:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->level:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .line 29
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->level:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected newViewByLayout(Landroid/view/View;Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 3
    .param p1, "last"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "inflater_layout"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;

    .line 72
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;
    :goto_0
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$1;->$SwitchMap$com$lenovo$scg$gallery3d$about$lenovoabout$debug$item$DebugItem$LEVEL:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->getLevel()Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_1
    return-object p1

    .line 63
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;
    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;-><init>()V

    .line 66
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    const v1, 0x7f10005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->title:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f100061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->title:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_NORMAL_TITLE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->summary:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_NORMAL_SUMMARY:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 81
    :pswitch_1
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->title:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_WARN_TITLE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->summary:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_WARN_SUMMARY:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 85
    :pswitch_2
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->title:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_ERROR_TITLE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$Holder;->summary:Landroid/widget/TextView;

    sget v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->COLOR_ERROR_SUMMARY:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    return-void
.end method
