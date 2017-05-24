.class public Lcom/lenovo/lps/sus/b/g;
.super Lcom/lenovo/lps/sus/QueryResult;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/lenovo/lps/sus/QueryResult;-><init>()V

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/g;->e:Z

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/g;->j:J

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/lenovo/lps/sus/QueryResult;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/g;->e:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->g:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/lps/sus/b/g;->j:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->k:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->l:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/g;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lps/sus/b/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lps/sus/b/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lps/sus/b/g;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/lenovo/lps/sus/b/g;->packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/lenovo/lps/sus/b/g;->appKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/lenovo/lps/sus/b/g;->channelKey:Ljava/lang/String;

    iput-object p9, p0, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/lenovo/lps/sus/b/g;->newVerName:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->verDescribe:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->forceUpdate:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->custKey:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSignalFileMD5:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGMD5:Ljava/lang/String;

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGID:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGDownloadURL:Ljava/lang/String;

    and-int v2, p1, p15

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/g;->bPatchUpdateEnableFlag:Z

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/g;->bPatchUpdateEnableFlag:Z

    if-eqz v2, :cond_0

    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/g;->downloadPKGRealSize:J

    :goto_0
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/g;->e:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->f:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->g:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->h:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->i:Ljava/lang/String;

    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/g;->j:J

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->k:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->l:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/g;->m:Ljava/lang/String;

    return-void

    :cond_0
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/g;->downloadPKGRealSize:J

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/lenovo/lps/sus/QueryResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/g;

    return-object v0
.end method
