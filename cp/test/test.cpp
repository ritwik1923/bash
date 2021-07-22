/*
---------------------------
Author      : Ritwik Mandal
Institution : IIEST, Shibpur
---------------------------
*/
#include <bits/stdc++.h>
using namespace std;
#define gc getchar_unlocked
#define rep(i, a, b) for (ll i = a; i < b; i++)
#define fo(i, k, n) for (ll i = k; k < n ? i < n : i > n; k < n ? i += 1 : i -= 1)
#define fox(i, k, n, x) for (ll i = k; k < n ? i < n : i > n; k < n ? i += x : i -= x)
#define ll long long
#define si(x) scanf("%d", &x)
#define sl(x) scanf("%lld", &x)
#define ss(s) scanf("%s", s)
#define sline(x) getline(cin, x);
#define pi(x) printf("%d\n", x)
#define pl(x) printf("%lld\n", x)
#define ps(s) printf("%s\n", s)
#define deb(x) cout << #x << "=" << x << " "
#define deb2(x, y) cout << #x << "=" << x << "," << #y << "=" << y << "\n"
#define pb push_back
#define mp make_pair
#define F first
#define S second
#define Endl cout << "\n"
#define all(x) x.begin(), x.end()
#define clr(x) memset(x, 0, sizeof(x))
#define sortall(x) sort(all(x))
#define tr(it, a) for (auto it = a.begin(); it != a.end(); it++)
#define PI 3.1415926535897932384626
#define Inf 1e9
#define mod 1e9+7
typedef pair<int, int> pii;
typedef pair<ll, ll> pl;
typedef vector<int> vi;
typedef vector<ll> vl;
typedef vector<pii> vpii;
typedef vector<pl> vpl;
typedef vector<vi> vvi;
typedef vector<vl> vvl;
typedef priority_queue<int> maxHeap;
typedef priority_queue<int, vector<int>, greater<int>> minHeap;


ll MOD(ll,ll);
void doublesetprecision(double,int);
bool isEven(ll);
ll gcd(ll, ll);


ll n,m,o,ans,k;
ll a[1000000];


void solve()
{
    
}


int main()
{
    #ifndef ONLINE_JUDGE
    // For getting input from input.txt file
    freopen("input.txt", "r", stdin);
    // Printing the Output to output.txt file
    freopen("output.txt","w", stdout);
    #endif
    int t = 1;
    // si(t);
    ll test = 0;
    while (t--)
    {
        ++test;
        //cout<<test<<": ";
        solve();
        Endl;
    }
    return 0;
}








bool isEven(ll n)
{
    if (n % 2 == 0)
        return 1;
    return 0;
}
void doublesetprecision(double x, int p)
{
    cout << fixed << setprecision(p) << x;
}
ll MOD(ll x, ll M)
{
    x = x % M;
    if( x < 0) x += M;
    return x;
}
ll gcd(ll a, ll b)
{
    return b ? gcd(b, a % b) : a;
}