.class Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "SCGPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leexinterface/SCGPackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leexinterface/SCGPackageManagerHelper;


# direct methods
.method private constructor <init>(Lcom/lenovo/leexinterface/SCGPackageManagerHelper;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;->this$0:Lcom/lenovo/leexinterface/SCGPackageManagerHelper;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leexinterface/SCGPackageManagerHelper;Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;-><init>(Lcom/lenovo/leexinterface/SCGPackageManagerHelper;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 22
    return-void
.end method
