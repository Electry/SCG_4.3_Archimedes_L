.class public final enum Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;
.super Ljava/lang/Enum;
.source "GLRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

.field public static final enum LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

.field public static final enum LockHorizonScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

.field public static final enum LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

.field public static final enum LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    const-string v1, "LockHorizonScreen"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockHorizonScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    const-string v1, "LockVerticalScreen"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    const-string v1, "LockBothScreen"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    const-string v1, "LockNone"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockHorizonScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    return-object v0
.end method
