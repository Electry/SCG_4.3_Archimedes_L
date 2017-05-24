.class public Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;
.super Landroid/app/AlertDialog;
.source "SystemShareDialog.java"


# static fields
.field private static final ADAPTER_COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final ADAPTER_COLUMN_LABEL:Ljava/lang/String; = "label"


# instance fields
.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mMimeType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    const v1, 0x7f0a007e

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const-string v1, "image/jpeg"

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mMimeType:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mComponent:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 128
    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mContext:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mUri:Landroid/net/Uri;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "getType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mMimeType:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mComponent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private createShareMenu(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/ListView;

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 90
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v11, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 91
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    const-string v1, "com.tencent.mm"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const-string v1, "com.lenovo.anyshare"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.ideafriend"

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v6, "component":Landroid/content/ComponentName;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "label"

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040176

    new-array v4, v12, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "label"

    aput-object v5, v4, v1

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 108
    .local v0, "adpter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void

    .line 105
    :array_0
    .array-data 4
        0x7f100080
        0x7f100081
    .end array-data
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 71
    const v3, 0x7f040179

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->setContentView(I)V

    .line 72
    const v3, 0x7f1008d3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 73
    .local v1, "listView":Landroid/widget/ListView;
    const v3, 0x7f1008d2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "titleText":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 75
    const v3, 0x7f1008d4

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "closeText":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 77
    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemShareDialog: mMimeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v3, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->createShareMenu(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 86
    return-void
.end method
