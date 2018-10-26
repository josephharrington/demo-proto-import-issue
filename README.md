# demo-proto-import-issue

Execute:
```sh
git clone https://github.com/josephharrington/demo-proto-import-issue.git
cd demo-proto-import-issue
npm install && npm run build
```

`tsc` output:
```
src/index.ts:6:17 - error TS2339: Property 'HissRequest' does not exist on type 'typeof import("/Users/jharrington/code/demo-proto-import-issue/src/generated/main_pb")'.

6 assert(messages.HissRequest);
                  ~~~~~~~~~~~
```

`node dist/index.js` output:
```
Ok!
```
